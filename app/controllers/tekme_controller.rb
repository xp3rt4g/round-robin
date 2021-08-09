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

        @output = Tekme.narediTurnir(@ekipe)

    end
end
