require_relative 'human'

class Wizard < Human 

    def initialize
        super
        @health = 50
        @intelligence = 25
    end

    def heal
        @heal += 10
    end 

    def fireball(obj)
        if obj.class.ancestors.include?(Human)
            obj.health -= 20
            true
          else
            false
        end
        # @health -= 20
        # puts @health
    end

end

# magic = Wizard.new
# magic.fireball