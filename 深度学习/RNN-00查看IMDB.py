import tensorflow as tf

# 引入IMDB电影评论数据集
imdb = tf.keras.datasets.imdb
(train_data, train_labels), (test_data, test_labels) = imdb.load_data(num_words=10000)
# 查看部分相关参数
print("训练集有: {}个, 训练标签有: {}个".format(len(train_data), len(train_labels)))
print("它的评论数据长这样:\n",train_data[0])
print("第一条评论的长度为:{},第二条评论的长度为:{}".format(len(train_data[0]), len(train_data[1])))
#
# # 一个映射单词到整数索引的词典
# word_index = imdb.get_word_index()
#
# # 保留第一个索引
# word_index = {k:(v+3) for k,v in word_index.items()}
# word_index["<PAD>"] = 0
# word_index["<START>"] = 1
# word_index["<UNK>"] = 2  # unknown
# word_index["<UNUSED>"] = 3
#
# reverse_word_index = dict([(value, key) for (key, value) in word_index.items()])
#
# def decode_review(text):
#     return ' '.join([reverse_word_index.get(i, '?') for i in text])
#
#
# decode_review(train_data[0])
