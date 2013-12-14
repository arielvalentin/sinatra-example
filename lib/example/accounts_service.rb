module Example
  class AccountsService
    attr_reader :repository
    
    def initialize(repository)
      @repository = repository
    end

    def find_by_account_number(account_number)
      repository.find(FindByAccountNumberSpecification.new(account_number)).first
    end

  end

end