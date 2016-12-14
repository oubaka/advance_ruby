require 'csv'

class Reader
  
  def initialize(file, name)
    @file = file
    @name = name
  end

  def get_model
    # define dynamic class
    dynamic_model = Class.new do
      def initialize(row)    
        @row = row    
      end

      def to_s
        "#{name}, #{age}, #{city}"        
      end
    end
    dynamic_model
  end

  def create_methods(records, dynamic_model)
    records.headers.each do |h|
      dynamic_model.class_eval do
        define_method h do      
          @row[h] 
        end
      end
    end
    dynamic_model
  end

  def read
    records = CSV.readlines(@file, headers: true)
    
    dynamic_model = create_methods(records, get_model)    

    # setting the class name
    Object.const_set(@name.capitalize, dynamic_model)

    users_list = []
    records.each do |r|
      user = dynamic_model.new(r)   
      users_list << user
    end
    users_list
  end

end