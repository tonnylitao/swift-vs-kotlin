map.mapValues { (_, value): Map.Entry<Int, String> -> "$value!" }
​
map.mapValues { (_, value: String) -> "$value!" }