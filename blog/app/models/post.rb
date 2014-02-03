class Post < ActiveRecord::Base

    validates :name, presence: true
end
 
Person.create(name: "John Doe").valid? # => true
Person.create(name: nil).valid? # => false

   validates :title, presence: true,
                    length: { minimum: 5 }
end
 validates :email, confirmation: true
end
<%= text_field :post, :email %>
<%= text_field :post, :email_confirmation %>
>> p = Person.new
#=> #<Person id: nil, name: nil>
>> p.errors
#=> {}
 
>> p.valid?
#=> false
>> p.errors
#=> {name:["can't be blank"]}
 
>> p = Person.create
#=> #<Person id: nil, name: nil>
>> p.errors
#=> {name:["can't be blank"]}
 
>> p.save
#=> false
 
>> p.save!
#=> ActiveRecord::RecordInvalid: Validation failed: Name can't be blank
 
>> Person.create!
#=> ActiveRecord::RecordInvalid: Validation failed: Name can't be blank
>> Person.new.errors[:name].any? # => false
>> Person.create.errors[:name].any? # => true
