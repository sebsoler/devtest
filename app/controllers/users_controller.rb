class UsersController < ApplicationController
  # before_filter :authenticate_user!

  def show
  @micropost = Micropost.new
  @user = User.find(params[:id])
  @microposts = @user.microposts
  @title = @user.name
  
  @micropost_sample = ["@DubaiAbulhoul: #nowreading The Lost Symbol by Dan Brown.", "#nowlistening B52's - Love Shack", "#noweating my mother's amazing carrot cake" ]
  
  @micropost_sample.each do |tweet, i|  
    if tweet.match(/#nowreading/).to_s == "#nowreading"
      #regex match on #nowreading, if true then save this tweet in memory
      @nowreading = tweet
      #code is primed to generate the amazon dynamic links
          if tweet.match(/#nowreading$/)
            @reading_link = tweet.match(/([^\s]*\s){5}(#nowreading$)/).to_s
          else
            @reading_link = tweet.match(/#nowreading.*/).to_s.gsub("#nowreading",'')
          end
      puts @reading_link    
    elsif tweet.match(/#noweating/).to_s == "#noweating"
      @noweating = tweet
    elsif tweet.match(/#nowlistening/).to_s == "#nowlistening"
      @nowlistening = tweet
    elsif tweet.match(/#nowvisiting/).to_s == "#nowvisiting"
      @nowvisiting = tweet
    elsif tweet.match(/#nowdoing/).to_s == "#nowdoing"
      @nowdoing = tweet
    elsif tweet.match(/#nowbuying/).to_s == "#nowbuying"
      @nowbuying = tweet
    elsif tweet.match(/#nowwearing/).to_s == "#nowwearing"
      @nowwearing = tweet
    elsif tweet.match(/#nowattending/).to_s == "#nowattending"
      @nowattending = tweet
    elsif tweet.match(/http:\/\//).to_s == "http://"
      @nowposting = tweet
    else
      # nothing happens...
    end
  end
      
  
  end
  
  def show2
    @user = User.find(params[:id])
    
    @tweet_sample = Array.new
    @tweet_sample[0] = "#nowreading Let Me In by John Ajvide. I have never read such a traumatic and horrific book."
    @tweet_sample[1] = "@DubaiAbulhoul: #nowreading The Lost Symbol by Dan Brown."
    @tweet_sample[2] = "#nowreading el club de paris by Steve Berry"
    @tweet_sample[3] = "Mt favorite book of ALL TIME! Everybody should read that book. RT @FashionablySade: #NowReading The autobiography of Malcom X-Alex Haley"
    @tweet_sample[4] = "blah blah blah #nowreading A Song of Ice and Fire Book 3 - A Storm of Swords by George R.R.Martin"
    @tweet_sample[5] = "Outstanding - an epub reader that works on this phone. Now...where did I stop in The Jefferson Key? #nowreading"
    @tweet_sample[6] = "#nowreading Any Known Blood - Lawrence Hill #notbad examining race issues though the eye of a product of a white\black union"
    @tweet_sample[7] = "#noweating my mother's amazing carrot cake"
    @tweet_sample[8] = "#nowlistening B52's - Love Shack"
    @tweet_sample[9] = "#nowvisiting the rocky mountains, CO http://4sq.co/alADf31Af"
    @tweet_sample[10] = "#nowdoing programming like a mad man!"
    @tweet_sample[11] = "#nowbuying an iPad 2"
    @tweet_sample[12] = "#nowwearing my favorite ferragamo shoes"
    @tweet_sample[13] = "#nowposting http://www.showmethelove.co - is a fun app to improve your relationship"
    @tweet_sample[14] = "#nowattending Entrepreneurs Roundtable 36; it's a great event!"
    
    @tweet_sample.each_with_index do |tweet, i|  
      if tweet.match(/#nowreading/).to_s == "#nowreading"
        #regex match on #nowreading, if true then save this tweet in memory
        @nowreading = tweet
        #code is primed to generate the amazon dynamic links
            if tweet.match(/#nowreading$/)
              @reading_link = tweet.match(/([^\s]*\s){5}(#nowreading$)/).to_s
            else
              @reading_link = tweet.match(/#nowreading.*/).to_s.gsub("#nowreading",'')
            end
        puts @reading_link    
      elsif tweet.match(/#noweating/).to_s == "#noweating"
        @noweating = tweet
      elsif tweet.match(/#nowlistening/).to_s == "#nowlistening"
        @nowlistening = tweet
      elsif tweet.match(/#nowvisiting/).to_s == "#nowvisiting"
        @nowvisiting = tweet
      elsif tweet.match(/#nowdoing/).to_s == "#nowdoing"
        @nowdoing = tweet
      elsif tweet.match(/#nowbuying/).to_s == "#nowbuying"
        @nowbuying = tweet
      elsif tweet.match(/#nowwearing/).to_s == "#nowwearing"
        @nowwearing = tweet
      elsif tweet.match(/#nowattending/).to_s == "#nowattending"
        @nowattending = tweet
      elsif tweet.match(/http:\/\//).to_s == "http://"
        @nowposting = tweet
      else
        # nothing happens...
      end
    end      
 
  end #show controller
    
#    if text.match(/#books$/)
#      puts text.match(/([^\s]*\s){10}(#books$)/).to_s
#    else
#      puts text.match(/#books.*/).to_s.gsub("#books",'')
#    end

end  #the entire Users_controller
