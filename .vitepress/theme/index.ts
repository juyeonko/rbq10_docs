import { h } from 'vue'
import Theme from 'vitepress/theme'
import { inBrowser } from 'vitepress'
import '../style/main.css'
import '../style/vars.css'
import 'virtual:uno.css'
import HomePage from '../components/HomePage.vue'

export default {
  ...Theme,
  Layout() {
    return h(Theme.Layout, null, {
      'home-features-after': () => h(HomePage),
    })
  },
}