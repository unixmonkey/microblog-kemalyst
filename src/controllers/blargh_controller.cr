require "../models/blargh"

module BlarghController
  class Index < Kemalyst::Controller
    def call(context)
      new_blargh = Blargh.new
      render "blargh/new.ecr", "main.ecr"
    end
  end

  class New < Kemalyst::Controller
    def call(context)
      demo = Demo.new
      render "blargh/new.ecr", "main.ecr"
    end
  end
end
