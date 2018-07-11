class ApiController < ApplicationController
  def api_init
             @msg =
            { 
              type: "buttons",
              buttons: ["소개", "장윤정", "학과","육성재","하고싶은것"]
            }
        render json: @msg, status: :ok
  end

  def api_message
    @response = params[:content]
    if @response == "소개"
            @msg = {
            message: {
                text: "안녕하세요. 이번에 database 수업을 듣는 16학번 장윤정입니다."},
            keyboard: {
              type: "buttons",
              buttons: ["소개", "장윤정", "학과","육성재","하고싶은것"]
              }
            }
         render json: @msg, status: :ok
        elsif @response == "장윤정"
            @msg = {
            message: {
                text: "안녕하세요. 장윤정입니다.",
                photo: {
                  url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHz88YBXiCuj-zEux9EqfhiD0ofV6hZDFpeNgBu_-EaTC0dKnQEg",
                width: 640,
                height: 480
                  
                }
            },
            keyboard: {
              type: "buttons",
              buttons: ["소개", "장윤정", "학과","육성재","하고싶은것"]
              }
            }
              
         render json: @msg, status: :ok
        elsif @response == "학과"
          @msg = {
          message: {
              text: "소프트웨어 학과 입니다.",
              message_button: {
                  label: "SOFTWARE HOMEPAGE",
                  url: "https://software.cbnu.ac.kr"
                }
            },
          keyboard: {
            type: "buttons",
            buttons: ["소개", "장윤정", "학과","육성재","하고싶은것"]
            }
          }
       render json: @msg, status: :ok
               elsif @response == "육성재"
          @msg = {
          message: {
              text: "육성재 사진.",
              photo: {
                url: "http://img.newspim.com/news/2017/12/29/20171229170613_w.jpg",
                width: 640,
                height: 480
                
              }
            
          },
          keyboard: {
            type: "buttons",
            buttons: ["소개", "장윤정", "학과","육성재","하고싶은것"]
            }
          }
       render json: @msg, status: :ok
    end
  end
end

