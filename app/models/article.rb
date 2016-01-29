
#class GoodnessValidator<ActiveModel::Validator
	#def validate(record)
		#if record.title = "Mukesh"
			#record.errors[:base]<<"This is not mukesh"
	#end
#end
#end


class Article < ActiveRecord::Base
	has_many :comments
	validates :title ,presence: {strict: true},length: {minimum: 5} ,confirmation: true, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }, allow_blank: true, if: "title.nil?"
	validates :check, acceptance: true
	validates_associated :comments

	 validates :title_confirmation ,presence: true 
	  #validates_with GoodnessValidator
end
