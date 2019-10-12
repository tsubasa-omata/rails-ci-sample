# == Schema Information
#
# Table name: tasks
#
#  id         :integer          not null, primary key
#  title      :string(255)      not null
#  body       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Task do
  describe '#valid?' do
    context 'タイトルが空の場合' do
      let(:task) { build(:task, title: nil, body: '記事本文') }
      it { expect(task).to_not be_valid }
    end

    context '本文が空の場合' do
      let(:task) { build(:task, title: '記事タイトル', body: nil) }
      it { expect(task).to be_valid }
    end

    context 'タイトルと本文が入力されている場合' do
      let(:task) { build(:task, title: '記事タイトル', body: '記事本文') }
      it { expect(task).to be_valid }
    end
  end
end