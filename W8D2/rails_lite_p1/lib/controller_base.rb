require 'active_support'
require 'active_support/core_ext'
require 'erb'
require_relative './session'

class ControllerBase
  attr_reader :req, :res, :params

  # Setup the controller
  def initialize(req, res) #should take a Rack::Request and Rack::Response object as inputs and save them as instance variables (ivars) for later use.
    @req, @res = req, res
    @already_built_response ||= false
  end

  # Helper method to alias @already_built_response
  def already_built_response?
    @already_built_response
  end

  # Set the response status code and header
  def redirect_to(url) # Issuing a redirect consists of two parts, setting the 'Location' field of the response header to the redirect url and setting the response status code to 302.
    @res.status = 302
    @res["Location"] = url
    if already_built_response?
      raise "Double Render!"
    end
    @already_built_response = true
    nil
  end

  # Populate the response with content.
  # Set the response's content type to the given type.
  # Raise an error if the developer tries to double render.
  def render_content(content, content_type)
    @res.write(content)
    @res['Content-Type'] = content_type
    if already_built_response?
      raise "Double Render!"
    end
    @already_built_response = true
    nil
  end

  # use ERB and binding to evaluate templates
  # pass the rendered html to render_content
  def render(template_name)
  end

  # method exposing a `Session` object
  def session
  end

  # use this with the router to call action_name (:index, :show, :create...)
  def invoke_action(name)
  end
end
