# Hash와 Array의 차이는 인덱스로 사용하는 것의 타입이 무엇이냐 이다.
# Array는 key 가 정수만 가능하고
# Hash는 어떤 타입이든 가능하다

hash = {
    'hanyang' => 'wangsipri',
    55 => 'numberkey',
    [1,2,3] => 'arraykey'
}
p hash # => {"hanyang"=>"wangsipri", 55=>"numberkey", [1, 2, 3]=>"arraykey"}
p hash.keys # => ["hanyang", 55, [1, 2, 3]]
p hash.key("wangsipri") # => "hanyang" // hash.key(value) => Returns the key of an occurrence of a given value.
#                                                            If the value is not found, returns nil.
p hash.values # => ["wangsipri", "numberkey", "arraykey"]
p hash.values_at(55,"hanyang") # => ["numberkey", "wangsipri"]
