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

      get 'index', {use_route: 'articles', column_name: @col.name}

    end

    it { should respond_with(:success) }
#    it { should render_template(:show) }
 #   it { should_not set_the_flash }
  #  it { should rescue_from(ActiveRecord::RecordNotFound).with(:render_404) }
  end
end
