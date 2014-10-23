class ApiController < ActionController::Base

  def index
    @users = User.all
  end

  def create
    User.create(params["user"])
    @message = 'ok'
  rescue
    @message = 'some error'
  end

  def delete
    user = User.find(params["user"]["id"])
    user.destroy
    @message = "deleted user with id ##{params[:id]}"
  rescue ActiveRecord::RecordNotFound
    @message = 'no such user'
  end

  def update
    @user = User.find(params["user"]["id"])
    @user.update_attributes(params["user"])
  rescue ActiveRecord::RecordNotFound
    @message = 'no such user'
  end

end

# If you want to test this out with some other command line tools:
#  delete
#  echo '{"user":{"id":1}}' | POST http://localhost:3000/api/delete.json -c application/json
#  
#  create
#  echo '{"user":{"name":"jon", "surname":"doe", "age":12}}' | \
#    POST http://localhost:3000/api/create.json -c application/json
#
#  update
#  echo '{"user":{"id":"17", "name":"jonnyawesome", "surname":"doe", "age":12}}' | \
#    POST http://localhost:3000/api/update.json -c application/json -m PUT
#    
#  index
#  GET http://localhost:3000/api/index.json
