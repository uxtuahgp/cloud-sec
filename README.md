## Практическая работа по теме "Облачные провайдеры - безопасность"

С помощью [манифеста terraform](tf/main.tf)

- создал симметричный ключ шифрования my-key
- задал параметры шифрования на стороне сервера при создании объектного хранилища my-bucket
- загрузил файл изображения tux.jpg в шифруемое объектное хранилище
- получил в облаке [временную ссылку на объект](https://storage.yandexcloud.net/uxtuahgp-20260613/tux-pic-20260613.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=YCAJEiP_L1Y0rgKi9gMQVghKN%2F20260617%2Fru-central1%2Fs3%2Faws4_request&X-Amz-Date=20260617T163957Z&X-Amz-Expires=172800&X-Amz-Signature=5ff1d701653fff80a94497655892af36b92d21bbf1db7a7bc12825b95d695732&X-Amz-SignedHeaders=host&response-content-disposition=attachment)
  , при открытии которой успешно загрузился файл изображения.
