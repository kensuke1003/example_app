class TodolistsController < ApplicationController
  def new
    @list = List.new
  end
  
  def create
    list = List.new(list_params)
    list.save
    redirect_to todolist_path(list.id)
  end
  
  def index
    @lists = List.all
  end
  
  def show
    @list = List.find(params[:id])
  end
  
  def edit 
    @list = List.find(params[:id])
  end
  
  def update
    #Listのfindメソッドでデータを見つけ、引数paramsで呼び出す
    list = List.find(params[:id])
      
    #ローカル変数　paramsで送られたてきた値を受け取るメソッド
    list.update(list_params)
    
    #show(詳細画面リダイレクト)
    redirect_to todolist_path(list.id)
  end
  
  def destroy
    #レコードを一件取得
    list = List.find(params[:id])
    #レコードを削除
    list.destroy
    #一覧画面へリダイレクト
    redirect_to todolists_path
    
  end
  
  private
  def list_params
    params.require(:list).permit(:title,:body,:image)
  end
end
