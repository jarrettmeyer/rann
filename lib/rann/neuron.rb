module RANN
  class Neuron
    attr_reader :index, :layer

    def initialize(network, layer, index)
      @network = network
      @layer = layer
      @index = index
    end

    def input?
      @layer == 0
    end

    def output
    end

  end
end