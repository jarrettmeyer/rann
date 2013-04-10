module RANN
  class Network

    attr_reader :neurons

    def initialize(layer_definitions)
      @layer_definitions = layer_definitions
      @neurons = []
      initialize_layers
    end

    def size
      @layer_definitions.size
    end

    private

      def initialize_layers
        @neurons = []
        layer_index = 0
        @layer_definitions.each do |layer_definition|
          layer_neurons = []
          (1..layer_definition).each { |index| layer_neurons << Neuron.new(self, layer_index, index) }
          @neurons << layer_neurons
          layer_index += 1
        end
      end

  end
end