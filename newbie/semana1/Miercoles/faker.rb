require "csv"
require "faker"
require "date"
class Person
attr_accessor :first_name, :last_name, :email, :phone, :created_at

  def initialize(first_name=Faker::Name.first_name, last_name= Faker::Name.last_name, email= Faker::Internet.email, phone= Faker::PhoneNumber.phone_number, created_at=Time.now)
    @first_name= first_name
    @last_name= last_name
    @phone= phone
    @email= email
    @created_at= created_at
  end

end


def people(num)
  array = []
  num.times do
    array << Person.new
  end
   array
end
list_of_people = people(20)



class PersonWriter


  def initialize(file, list)
    @file = file
    @list = list
  end

  def  create_csv
    CSV.open(@file, "wb") do |csv|
      @list.each do |person|
        csv << [person.first_name, person.last_name, person.email, person.phone, person.created_at]
      end
    end
  end
end

class PersonParser

  def initialize(file)
    @file = file
  end

  def parser_csv
    col_data = []
    CSV.foreach(@file) do |row|
      col_data << Person.new(row[0], row[1], row[2], row[3], row[4])
    end
  p  col_data.first(10)
  end
end

 mod =list_of_people[0]= Person.new("Cesar", "Garcia", "colt_zboncak@beer.org", "516.393.9022 x088,2017-07-18 16:18:00 -0500")

 person_writer= PersonWriter.new("people.csv", list_of_people)
  person_writer.create_csv


person_parser = PersonParser.new("people.csv")
person_parser.parser_csv
