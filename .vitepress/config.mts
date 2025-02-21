import { defineConfig } from 'vitepress'
import UnoCSS from 'unocss/vite'

export default defineConfig({
  base: "/rbq10_docs/",
  title: "Rainbow Robotics",
  description: "Document",
  head: [
    ['meta', { name: 'theme-color', content: '#729b1a' }],
    ['link', { rel: 'icon', href: '/rbq10_docs/logo.png', type: 'image/svg+xml' }],
  ],
  vite: {
    plugins: [UnoCSS()],
    ssr: {
      noExternal: ['unocss']
    }
  },
  themeConfig: {
    logo: '/rbq10_docs/logo.png',
    // https://vitepress.dev/reference/default-theme-config
    nav: [
      { text: 'Home', link: '/' },
      { text: 'Manual', link: '/manual/intro-rainbow-rbq' },
      { text: 'Company', link: 'https://www.rainbow-robotics.com' }
    ],

    sidebar: [
      {
        text: 'Introduction',
        items: [
          { text: 'Hello, RBQ10', link: '/manual/intro-rainbow-rbq' },
          { text: 'System Configuration', link: '/manual/intro-system-configuration' },
        ]
      },
      {
        text: 'Getting Started',
        items: [
          { text: 'Robot Quick Start', link: '/manual/start-robot-quick-start' },
          { text: 'SLAM Navigation Quick Start', link: '/manual/start-slam-quick-start' },
          { text: 'App UI Interface', link: '/manual/start-app-ui-interface' },
          { text: 'GUI User Guide', link: '/manual/start-gui-user-guide' },
          { text: 'Docking Station', link: '/manual/start-docking-station' },
        ]
      },
      {
        text: 'Hardware',
        items: [
          { text: 'Specification', link: '/manual/hardware-specification' },
          { text: 'Physical Parameter', link: '/manual/hardware-physical-parameter' },
          { text: 'Maintenance', link: '/manual/hardware-maintenance' },
          { text: 'Packing', link: '/manual/hardware-packing' },
          { text: 'Battery', link: '/manual/hardware-battery' },
        ]
      },
      {
        text: 'Interface',
        items: [
          { text: 'Internal Interface', link: '/manual/interface-internal-interface' },
          { text: 'Network', link: '/manual/interface-network' },
          { text: 'External Port', link: '/manual/interface-external-port' },
        ]
      },
      {
        text: 'Software',
        items: [
          { text: 'RBQuad-DEV', link: '/manual/software-rbquad-dev' },
          { text: 'ROS', link: '/manual/software-ros' },
          { text: 'AI Control', link: '/manual/software-ai-control' },
          { text: 'RBQ-SDK', link: '/manual/software-rbq-sdk' },
        ]
      },
      {
        text: 'Troubleshooting',
        items: [
          { text: 'Special Case Handling', link: '/manual/troubleshooting-special-case-handling' },
          { text: 'FAQ', link: '/manual/troubleshooting-faq' },
        ]
      },
      
      {
        text: 'Safety & Precautions',
        items: [
          { text: 'Safety Indications', link: '/manual/safety-safety-indications' },
          { text: 'General Safety Warning & Precautions', link: '/manual/safety-general-safety-warning-precautions' },
        ]
      },
    ],

    socialLinks: [
      { icon: 'github', link: 'https://github.com/vuejs/vitepress' }
    ]
  }
})
