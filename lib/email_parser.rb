class EmailAddressParser

    def initialize(emails_to_parse)
        @emails_to_parse = emails_to_parse
        # binding.pry
    end

    def parse
        # parsed_emails = @emails_to_parse.split(/\, | /)
        parsed_emails = @emails_to_parse.split(" ")
        parsed_emails = parsed_emails.map do |email| 
            email.delete(",")
        end
        # @emails_to_parse.sub!(",","")
        parsed_emails.uniq
        # binding.pry
    end
end

# class EmailAddressParser

#     def initialize(emails_to_parse)
#         @parsed_emails = emails_to_parse
#     end

#     def parse
#         @parsed_emails.sub!(",", "")
#         emails = @parsed_emails.split(" ")
#     end

# end