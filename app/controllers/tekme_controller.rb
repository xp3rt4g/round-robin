class TekmeController < ApplicationController
    def index

    end

    def tekme
        @ekipe = Array.new(10)
        @output = Array.new()
        for n in 1..10
            ime = "ekipa" + n.to_s
            params[ime].each do |value|
                value.each do |val|
                    @ekipe[n-1] = val
                end
            end
        end
        def narediTurnir(ekipe)
            for a in 1..9
                for i in 0..4
                    @output.push(ekipe[i].to_s + " - " + ekipe[9-i].to_s)
                end
                
                ekipe.insert(1, ekipe[9])
                @output.push("-----------------------------")
            end
        end
        
        
        narediTurnir(@ekipe)

    end
end
