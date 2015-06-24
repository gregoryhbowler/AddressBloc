require_relative "entry.rb"

class AddressBook
  attr_accessor :entries

  def initialize
    @entries = []
  end

  def add_entry(name, phone, email)

    index = 0
    @entries.each do |entry|

      if name < entry.name
        break
      end
      index += 1
    end

    @entries.insert(index, Entry.new(name, phone, email))
  end
    
  def remove_entry(email)
    @entries.delete_if {|entry| entry.email == email}
  end

  ## This solution was suggested by SO, and I would rather have found
  ## a solution which doesn't require you to enter the email address.
  ## Ideally, a delete method would first take a name and then print  
  ## the entry, and then ask you to confirm the deletion.

end