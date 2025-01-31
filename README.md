# Neovim Personal Configs

<p align="center">
  <table>
    <tr>
      <td align="center">
        <a href="https://neovim.io" target="_blank">
        <img src="https://upload.wikimedia.org/wikipedia/commons/4/4f/Neovim-logo.svg" alt="Neovim Logo" width="100" height="100"/>
        <br />
        <strong>Neovim</strong>
      </td>
      <td align="center">
        <a href="https://rubyonrails.org" target="_blank">
        <img src="https://upload.wikimedia.org/wikipedia/commons/6/62/Ruby_On_Rails_Logo.svg" alt="Ruby on Rails Logo" width="100" height="100"/>
        <br />
        <strong>Ruby on Rails</strong>
      </td>
      <td align="center">
        <a href="https://www.rust-lang.org" target="_blank">
        <img src="https://upload.wikimedia.org/wikipedia/commons/d/d5/Rust_programming_language_black_logo.svg" alt="Rust Logo" width="100" height="100"/>
        <br />
        <strong>Rust</strong>
      </td>
    </tr>
  </table>
</p>


Welcome to my personal Neovim development configurations repository!

I configured it using `lazy.nvim` by folke as plugin manager and `init.lua` as the cornerstone of my Neovim configuration, allowing you to specify settings, key mappings, and plugins.

I designed this configuration for use in my development ecosystem, which consists of `Arch Linux`.
But also is working fine with `Wsl2` and `Ubuntu`

This repository contains all the configurations and settings I use daily to enhance my development workflow. 

The current configurations focus primarily on **Ruby on Rails**, which is the main framework I work with, but they also include a strong emphasis on **Rust**, which I've been using extensively lately.

These settings are tailored to streamline my development process, ensuring efficiency and productivity.

## Table of Contents

- [Overview](#overview)
- [Technologies](#technologies)
- [Installation](#installation)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

## Overview 

This repository includes a collection of plugins and configurations that I use in my Neovim. 

These configs use lazyvim These settings are designed to work seamlessly with various tools and technologies that I frequently use. 

Whether you are setting up a new development environment or looking to optimize your existing setup, this repository can serve as a useful reference.

## Technologies

The configurations in this repository are optimized for the following technologies:

- **Ruby on Rails**: My primary framework for web development.
- **Rust**: The language I am most engaged and focused on at the moment.
- **C#**: In progress / Paused for now.

## Installation

To get started with these configurations, follow the steps below:

1. **If you have a previous Neovim config, make a backup of your current Neovim file**:


   required:
   
   `mv ~/.config/nvim{,.bak}`



   optional but recommended:


   `mv ~/.local/share/nvim{,.bak}`
   
   `mv ~/.local/state/nvim{,.bak}`
   
   `mv ~/.cache/nvim{,.bak}`

2. **Clone the repository**:

 
   `git clone git@github.com:Yuhribrp/nvim_configs.git ~/.config/nvim`
   
   `cd nvim_configs`

3. **Remove the .git folder, so you can add it to your own repo later if you want.**


   `rm -rf ~/.config/nvim/.git`

4. **Start Neovim**


   `nvim` and run `:Mason` 

## License

This repository is licensed under the MIT License


## Contributing

   If you have any suggestions or improvements, please feel free to reach out or open an issue. Contributions are always welcome!

## Contact

   For any questions or inquiries, you can reach me at:
   
   LinkedIn: [yuhribrp](https://www.linkedin.com/in/yuhribrp/)
