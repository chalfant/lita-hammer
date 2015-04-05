module Lita
  module Handlers
    class Hammer < Handler
      route(/\btouch\b/i, :touch_this)
      route(/\b(quit|legit)\b/i, :too_legit)

      def touch_this(response)
        response.reply "http://youtu.be/otCpCn0l4Wo"
      end

      def too_legit(response)
        response.reply "http://youtu.be/Cdk1gwWH-Cg"
      end
    end

    Lita.register_handler(Hammer)
  end
end
