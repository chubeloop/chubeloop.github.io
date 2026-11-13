require 'yaml'
require 'cgi'

# The publication list is shared by the website and the CV.
def latex(value)
  value = CGI.unescapeHTML(value.to_s)
  tokens = value.split(/(<\/?u>|<sup>†<\/sup>)/)
  tokens.map do |token|
    case token
    when '<u>' then '\\underline{'
    when '</u>' then '}'
    when '<sup>†</sup>' then '\\textsuperscript{$\\dagger$}'
    else
      raise "Unsupported HTML in publication data: #{token}" if token.match?(/<[^>]+>/)
      token.gsub(/[\\{}%$#&_~^]/) do |character|
        { '\\' => '\\textbackslash{}', '{' => '\\{', '}' => '\\}', '%' => '\\%', '$' => '\\$', '#' => '\\#', '&' => '\\&', '_' => '\\_', '~' => '\\textasciitilde{}', '^' => '\\textasciicircum{}' }.fetch(character)
      end
    end
  end.join
end

data = YAML.load_file('_data/publications.yml')
output = data.map do |category|
  lines = ["\\paragraph{#{latex(category.fetch('category'))}}", '\\begin{enumerate}[left=0pt]']
  category.fetch('items').each do |paper|
    lines << '    \\item \\small{'
    lines << "    \\textbf{#{latex(paper.fetch('title'))}} \\\\\n    #{latex(paper.fetch('authors'))} \\\\\n    \\textit{#{latex(paper.fetch('venue'))}}"
    lines << '    }'
  end
  lines << '\\end{enumerate}'
  lines.join("\n")
end.join("\n\n")
File.write('cv/publications.generated.tex', output + "\n")
