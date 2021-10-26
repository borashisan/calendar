require 'rails_helper'

RSpec.feature '正しい入力', type: :feature do
  before do
    @training = Training.create(
        training_type: 'デッドリフト', 
        weight: 100,
        rep: 10,
        set: 3,
        start_time: "2021-10-25 21:31:00.000000000 +0900") 
  end
  it 'Volumesの表示' do
    visit root_path
    expect(page).to have_content @training.weight * @training.rep * @training.set
  end
end
RSpec.feature '名前が未記入', type: :feature do
  before do
    @training = Training.create(
        training_type: nil, 
        weight: 100,
        rep: 10,
        set: 3,
        start_time: "2021-10-25 21:31:00.000000000 +0900") 
  end
  it 'Volumesの表示' do
    visit root_path
    expect(page).to have_content '名称未登録'
  end
end
RSpec.feature '数値が一つでも不正', type: :feature do
  before do
    @training = Training.create(
        training_type: 'デッドリフト', 
        weight: '',
        rep: 10,
        set: 3,
        start_time: "2021-10-25 21:31:00.000000000 +0900") 
  end
  it 'Volumesの表示' do
    visit root_path
    expect(page).to have_content '?'
  end
end