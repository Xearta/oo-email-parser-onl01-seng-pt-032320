require 'pry'

# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
  attr_accessor :emails
  
  def initialize(emails)
    @emails = emails
  end
  
  def parse
    @email_addresses = @emails.split(/[, ]/)
    @email_addresses.collect {|email| email.strip}
    @email_addresses.delete_if {|email| email == ""}
    
    
    @email_addresses.uniq
    
    
  end
  
end