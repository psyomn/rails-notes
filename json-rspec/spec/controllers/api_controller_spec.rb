require 'rails_helper'

RSpec.describe ApiController, :type => :controller do
  render_views

  it 'should create new users' do
    xhr :post, :create, {user: {name: 'jon', surname: 'doe', age: 12}}
    expect(User.find_by_name('jon')).to_not eq(nil)
  end 

  it 'should delete users properly' do
    xhr :post, :create, {user: {name: 'marry', surname: 'jane', age: 9001}}
    usr = User.find_by_name('marry')
    xhr :post, :delete, {user: {id: usr.id }}
    expect(User.find_by_name('mary')).to eq(nil)
  end

  it 'should update users properly' do 
    usr = User.create(name: 'agatha', surname: 'jenny', age: 24)
    prev_name = User.first.name
    xhr :put, :update, {user: {id: usr.id, name:'potatoface'}}
    expect(User.find(usr.id).name).to eq('potatoface')
  end

  it 'should list all users' do
    25.times { |x| User.create(name: "bob#{x}", surname: 'bobz', age: 9001) } 
    xhr :get, :index
    json = JSON[response.body] 
    expect(json["users"].count).to be >= 25
  end

end
