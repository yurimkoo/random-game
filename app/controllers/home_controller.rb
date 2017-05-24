class HomeController < ApplicationController
  def index
  end
  
  def result1
    future = {}
    future = {
      "흑흑. 암울하네요...": "당신의 미래는 암울합니다. 하지만 세 달 후 빛을 발할 것입니다. 걱정마세요!",
      "행복한 나날!": "당신의 미래는 행복함이 가득하네요. 이 기세 몰아서 봉사를 해보시는 것은 어떨까요?",
      "인생에 봄이!": "누군가 주변에서 당신을 좋아하고 있네요. 누군지는 모르겠지만, 한 가지는 확실합니다. 곧 연애를 시작하시겠어요.",
      "돈! 돈! 돈!": "돈복이 넘쳐나는 올해입니다. 지갑이 얇아질 일이 없겠어요!",
      "조심. 또 조심.": "주변에 위험이 도사리고 있어요. 항상 조심하세요. 예를 들면... 살이 찌는...",
      "척척박사!": "당신의 지혜가 한 건 하겠어요. 그로 인해 당신은 주변 사람들의 신임을 얻을 것입니다.",
      "...힘들겠어요.": "힘든 일이 없기 위해서는 매사에 노력하세요. 충고입니다."
    }
    
    key_array = future.keys
    
    future.each_value { |value| @val = value }
    
    @predict_title = key_array.sample(1)
    @predict_content = future[@predict_title[0]]
    
  end
end
