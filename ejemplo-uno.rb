class Appointment
    attr_reader :location, :purpose, :hour, :min, :day, :month, :year

    def initialize (location, purpose, hour, min, day, month, year)
        @location = location
        @purpose = purpose
        @hour = hour
        @min = min
        @day = day
        @month = month
        @year = year
    end

    def to_s
        " en #{location} sobre #{purpose}"
    end


    #     def ocurrs_on?
    #     endxit
    # end

    
    class MonthlyAppointment < Appointment
        def to_s
            "Reunion mensual " + super + " el día #{day} a la (s) #{hour}: #{min}."
        end    
    end

    class DailyAppointment < Appointment
        def to_s
            "Reunion diaria " + super + " a la (s) #{hour}: #{min}."
        end    
    end
        
    class OneTimeAppointment < Appointment
        def to_s
            "Reunion Unica " + super + " el  #{day}/#{month}/#{year} a la (s) #{hour}:#{min}."
        end    
    end




    # El método to_s debe responder de forma distinta para cada objeto (polimorfismo):
    puts OneTimeAppointment.new('Desafío Latam', 'Trabajo', 14, 30, 4, 6, 2019)
    # Reunión única en Desafío Latam sobre Trabajo el 4/6/2019 a la(s) 14:30.
    puts DailyAppointment.new('Desafío Latam', 'Educación', 8, 15, 0, 0, 0)
    # Reunión diaria en Desafío Latam sobre Educación a la(s) 8:15.
    puts MonthlyAppointment.new('NASA', 'Aliens', 8, 15, 23, 0, 0)
    # # Reunión mensual en NASA sobre Aliens el día 23 a la(s) 8:15.

end