# frozen_string_literal: true

class UserType
  attr_accessor :name, :user, :username, :email, :street, :suite, :city, :zipcode, :lat, :lng, :phone, :website, :bs, :company_name, :catchPhrase

  def ==(other)
    [name == other.name,
     username == other.username,
     email == other.email,
     street == other.street,
     suite == other.suite,
     city == other.city,
     zipcode == other.zipcode,
     lat == other.lat,
     lng == other.lng,
     phone == other.phone,
     website == other.website,
     bs == other.bs,
     company_name == other.company_name,
     catchPhrase == other.catchPhrase]
  end
end
