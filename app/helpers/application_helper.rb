module ApplicationHelper
  def default_meta_tags
    {
      site: 'ぶらっと',
      title: 'ぶらっと',
      reverse: true,
      separator: '|',
      description: 'ページの説明',
      keywords: 'ページキーワード',
      canonical: https://pf-app-udpx.onrender.com,
      og: {
        site_name: 'ぶらっと',
        title: 'ぶらっと',
        description: '献血を利用する人を増やす事を目的としたアプリです!',
        type: 'website',
        url: https://pf-app-udpx.onrender.com,
        image: image_url('OGP.jpg'),
        local: 'ja_JP',
      },
      twitter: {
        card: 'summary_large_image',
        site: '@https://x.com/5151b1236776',
        image: image_url('OGP.jpg')
      }
    }
  end
end
