require './app'

def main
  app = App.new
  app.load_data
  app.console_entry_point
end

main
