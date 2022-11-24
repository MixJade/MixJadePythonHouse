import tensorflow as tf

# 导入数据集
mnist = tf.keras.datasets.mnist
(train_images, train_labels), (test_images, test_labels) = mnist.load_data()
print("训练集样本及标签", train_images.shape, train_labels.shape)
print("测试集样本及标签", test_images.shape, test_labels.shape)
train_images, test_images = train_images / 255.0, test_images / 255.0  # 归一化

# 建立各层神经网络
model = tf.keras.models.Sequential()
model.add(tf.keras.layers.Conv2D(32, (5, 5), activation='relu', padding='same', input_shape=(28, 28, 1)))
model.add(tf.keras.layers.MaxPooling2D((2, 2)))
model.add(tf.keras.layers.Conv2D(64, (5, 5), activation='relu', padding='same'))
model.add(tf.keras.layers.MaxPooling2D((2, 2)))
model.add(tf.keras.layers.Flatten())
model.add(tf.keras.layers.Dense(64, activation='relu'))
model.add(tf.keras.layers.Dropout(0.5))
model.add(tf.keras.layers.Dense(10))

model.compile(optimizer='adam',  # 优化器
              loss=tf.keras.losses.SparseCategoricalCrossentropy(from_logits=True),  # 损失函数
              metrics=['accuracy'])  # 监控指标

model.fit(train_images, train_labels, epochs=5, validation_data=(test_images, test_labels))

test_loss, test_acc = model.evaluate(test_images, test_labels, verbose=2)

print('\n最终测试集上的精度为:', test_acc)
