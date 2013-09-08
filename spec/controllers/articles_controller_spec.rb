require 'spec_helper'

describe ArticlesController, 'index' do
  context "for any user" do
    before do
      @chan = FactoryGirl.create(:channel)
      @col = FactoryGirl.create(:column)
      @chan.columns << @col
      @chan.save

      @art = FactoryGirl.create(:article)
      @art.columns << @col
      @art.save
      @col.articles << @art

      get 'show', id: @art.id, use_route: 'articles'

    end

    it { should respond_with(:success) }
    it { should render_template(:show) }

  end
end
