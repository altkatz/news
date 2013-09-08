# -*- coding: utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
individual = Column.create!(name: "个股")
quotes = Column.create!(name: "行情")

ind_art = Article.new(
                      title: '德赛电池原总经理冯大明因内幕交易获刑七年' ,
                      summary: '中国证券网讯(记者郭晓萍)据深圳市人民检察院官方微博6日消息，深圳市德赛电池科技股份有限公司原总经理冯大明利用掌握的内幕信息，和女友谢晖操作4个账户买入德赛电池股票，共计获利1837万元。该案经深圳市人民检察院提起公诉后，近日，法院' ,
                      status: 'published' ,
                      publisher: '中国证券网',
                      content: '中国证券网讯(记者 郭晓萍)据深圳市人民检察院官方微博6日消息，深圳市德赛电池科技股份有限公司原总经理冯大明利用掌握的内幕信息，和女友谢晖操作4个账户买入德赛电池股票，共计获利1837万元。该案经深圳市人民检察院提起公诉后，近日，法院以内幕交易罪判处冯大明有期徒刑七年，并处罚金1900万元。谢晖被判处有期徒刑三年，缓刑五年，并处罚金50万元。

检察院称，本案中，冯大明为证券交易内幕信息的知情人员，谢晖为非法获取证券交易内幕信息的人员，两人在内幕信息尚未公开前交易相关股票，情节特别严重，行为均已构成内幕交易罪。按照刑法规定，构成该罪，情节特别严重的，处五年以上十年以下有期徒刑，并处违法所得一倍以上五倍以下罚金。')
ind_art.columns << individual
ind_art.save!

quo_art = Article.new(
                      title: '后市看点：周线罕见七连阳意味着什么？',
                      summary: '自2008年以来，周线7连阳走势极其少见，目前仅为第3次。而前两次均形成了较重要的高点，随后快速下跌达四周时间，跌幅不小。',
                      status: 'published' ,
                      publisher: '每经网综合',
                      content: '周五大盘没有因为国债期货开启而下跌，相反却收出了放量小阳线。至此，沪指周线出现了罕见的7连阳走势，这是自2008年来的第三次。并且前两次周7连阳后，周线的4连阴紧随而至！因此，下周走势值得投资者密切留意，关注变盘同时趋利避害。

从沪指的周线看，目前已走出了7连阳的走势。自2008年以来，周线7连阳走势极其少见，目前仅为第3次。而前两次均形成了较重要的高点，随后快速下跌达四周时间，跌幅不小。例如2009年6月、2012年1月均是如此。因此周线7连阳，代表某种“极限周期”。至少就指数上来说，目前其已面临较大的统计学风险。投资者下周可密切关注量能的变化，一旦不能维持千亿级别量能，或巨量阴线出现，则注意适当避险！')

quo_art.columns << quotes
quo_art.save!
