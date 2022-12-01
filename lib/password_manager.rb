class PasswordManager
    def initialize
        @all_passwords = {}
    end

    def add(input_service_name, input_password)
        def is_password_valid?(password)
            min_length = 8
            special_characters = /[!@$%&]/

            if password.length >= min_length && password =~ special_characters
                return true
            else
                return false
            end
        end

        if is_password_valid?(input_password)
            @all_passwords[input_service_name] = input_password
        end
    end

    def password_for(input_service_name)
        return @all_passwords[input_service_name]
    end

    def services
        return @all_passwords.keys
    end
end
