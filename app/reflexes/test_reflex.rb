# frozen_string_literal: true

class TestReflex < ApplicationReflex
  delegate :current_player, to: :connection
  # Add Reflex methods in this file.
  #
  # All Reflex instances include CableReady::Broadcaster and expose the following properties:
  #
  #   - connection  - the ActionCable connection
  #   - channel     - the ActionCable channel
  #   - request     - an ActionDispatch::Request proxy for the socket connection
  #   - session     - the ActionDispatch::Session store for the current visitor
  #   - flash       - the ActionDispatch::Flash::FlashHash for the current request
  #   - url         - the URL of the page that triggered the reflex
  #   - params      - parameters from the element's closest form (if any)
  #   - element     - a Hash like object that represents the HTML element that triggered the reflex
  #     - signed    - use a signed Global ID to map dataset attribute to a model eg. element.signed[:foo]
  #     - unsigned  - use an unsigned Global ID to map dataset attribute to a model  eg. element.unsigned[:foo]
  #   - cable_ready - a special cable_ready that can broadcast to the current visitor (no brackets needed)
  #   - reflex_id   - a UUIDv4 that uniquely identies each Reflex
  #   - tab_id      - a UUIDv4 that uniquely identifies the browser tab
  #
  # Example:
  #
  #   before_reflex do
  #     # throw :abort # this will prevent the Reflex from continuing
  #     # learn more about callbacks at https://docs.stimulusreflex.com/rtfm/lifecycle
  #   end
  #
  #   def example(argument=true)
  #     # Your logic here...
  #     # Any declared instance variables will be made available to the Rails controller and view.
  #   end
  #
  # Learn more at: https://docs.stimulusreflex.com/rtfm/reflex-classes

  def increment
    @count = element.dataset[:count].to_i + element.dataset[:step].to_i
    @message = 'hello'
  end
end

# {"attrs"=>{"href"=>"#", "data-controller"=>"test", "data-action"=>"click->test#increment", "style"=>"", "checked"=>false, "selected"=>false, "tag_name"=>"A"}, "dataset"=>{"dataset"=>{"data-controller"=>"test", "data-action"=>"click->test#increment"}, "datasetAll"=>{}}, "selectors"=>[], "reflexId"=>"77d637eb-50cd-4976-ba13-5facbadc9316", "resolveLate"=>false, "suppressLogging"=>false, "xpathController"=>"/html/body/main[1]/a[1]", "xpathElement"=>"/html/body/main[1]/a[1]", "inner_html"=>"", "text_content"=>"", "reflexController"=>"test", "target"=>"Test#increment", "args"=>[1], "url"=>"http://localhost:3000/gamerooms/3#", "tabId"=>"16cc9106-7108-46e7-a684-78bc2f84a65e", "formData"=>""}
