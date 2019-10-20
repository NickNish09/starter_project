class UltraScaffoldGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('templates', __dir__)

  def generate_everything
    invoke :scaffold
    invoke :scaffold_api
  end
end
