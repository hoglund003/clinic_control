module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js'
  ],
  plugins: [require("@tailwindcss/typography"), require("daisyui")],
  /** @type {import('tailwindcss').Config} */
  daisyui: {
    themes: [
      {
        light: {
          primary: "#86e15c",
          "primary-content": "#17340a",
          "primary-dark": "#66d931",
          "primary-light": "#a6e987",

          secondary: "#745ce1",
          "secondary-content": "#ffffff",
          "secondary-dark": "#4f31d9",
          "secondary-light": "#9987e9",

          background: "#eff1ee",
          foreground: "#fbfcfb",
          border: "#dee2dc",

          copy: "#252a22",
          "copy-light": "#62705c",
          "copy-lighter": "#889881",

          success: "#5ce15c",
          warning: "#e1e15c",
          error: "#e15c5c",

          "success-content": "#0a340a",
          "warning-content": "#34340a",
          "error-content": "#340a0a"
        }
      }
    ]
  }
}
