require "../models/blargh"

module BlarghController
  class Index < Kemalyst::Controller
    def call(context)
      blarghs = Blargh.all
      render "blargh/index.ecr", "main.ecr"
    end
  end

  class Create < Kemalyst::Controller
    def call(context)
      blargh = Blargh.new
      blargh.post = context.params["blargh"] as String
      blargh.save
      redirect "/"
    end
  end
end
