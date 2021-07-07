gem 'activerecord', '=4.2.10'
require 'active_record'
require 'mini_record'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'crm.sqlite3')

class Contact < ActiveRecord::Base
  field :first_name, as: :string
  field :last_name,  as: :string
  field :email,      as: :string
  field :note,       as: :text
  def full_name
    puts "#{@first_name} #{@last_name}"
  end
end

Contact.auto_upgrade!



=begin
ActiveRecord Class Methods
.all
.count
.find
accepts an id as an argument
.find_by
accepts a key-value pair as an argument (attribute and value)
.new
accepts a hash as an argument (attributes as keys and values as...values)
.create
accepts a hash as an argument (same way new does)
ActiveRecord Instance Methods
.delete
.save
.update AKA .update_attributes
accepts a hash as an argument (same way new and create do)
=end

