require 'json' 

module Jekyll

  class JSONPostGenerator < Generator
    safe true

    def generate(site)

      site.collections["pages"].each do |page|
        # puts page
        # puts page.data["permalink"]
        render_json(page,site)    
      end

    end

    def render_json(post, site)

      #add `json: false` to YAML to prevent JSONification
      if post.data.has_key? "json" and !post.data["json"]
        return
      end

      # path = post.destination( site.source )
      path = "_site/static-api" + post.url + "/data.json"

      #only act on post/pages index in /index.html
      # return if /\/index\.html$/.match(path).nil?

      #change file path
      # path['/index.html'] = '.json'

      #render post using no template(s)
      # post.render( {}, site.site_payload)

      #prepare output for JSON
      # post.data["related_posts"] = related_posts(post,site)
      output = [
        "url": post.to_liquid["url"],
        "name": post.to_liquid["name"],
        "phase": post.to_liquid["phase"],
        "keyTask": post.to_liquid["keyTask"],
        "objective": post.to_liquid["objective"],
        "responsibleParty": post.to_liquid["responsibleParty"],
        "category": post.to_liquid["category"],
        "inputs": post.to_liquid["inputs"],
        "outputs": post.to_liquid["outputs"],
        "stakeholders": post.to_liquid["stakeholders"],
        "bestPractice": post.to_liquid["bestPractice"],
        "downloads": post.to_liquid["downloads"],
        "activities": post.to_liquid["activities"],
        "documentation": post.to_liquid["documentation"],
        "tollgateInfo": post.to_liquid["tollgateInfo"],
        "exitCriteria": post.to_liquid["exitCriteria"]
      ]
      # output = post.to_liquid
      # output["next"] = output["next"].id unless output["next"].nil?
      # output["previous"] = output["previous"].id unless output["previous"].nil?

      #write
      #todo, figure out how to overwrite post.destination 
      #so we can just use post.write
      FileUtils.mkdir_p(File.dirname(path))
      File.open(path, 'w') do |f|
        f.write(output.to_json)
      end

    end
  end
end