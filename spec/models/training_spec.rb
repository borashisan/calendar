require 'rails_helper'

RSpec.describe Training, type: :model do
  # 正しい値でモデルが増減するかどうかのテスト
  subject{ -> { Training.create(training_type: 'デッドリフト', 
                            weight: 100,
                            rep: 10,
                            set: 3,
                            start_time: "2021-10-25 21:31:00.000000000 +0900") } }

  
  it { is_expected.to change { Training.all.size }.from(0).to(1) }
  # このアプリでは値が不正でも通したいのでテスト
  subject{ -> { Training.create(training_type: nil, 
    weight: nil,
    rep: nil,
    set: nil,
    start_time: "2021-10-25 21:31:00.000000000 +0900") } }


  it { is_expected.to change { Training.all.size }.from(0).to(1) }
end
