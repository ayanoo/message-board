class Message < ActiveRecord::Base
    # 名前は必須入力かつ２０文字いない
    validates :name , length:{ maximum: 20 }, presence: true
    
    # 年齢は0以上の数値
    validates :age , numericality: { only_integer:true , greater_than_or_equal_to:0}

    # 内容は必須入力かつ２文字以上３０文字以下
    validates :body , length:{ minimum: 2, maximum:30 }, presence: true
end
