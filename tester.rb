require 'rubygems'
require 'rails'
require 'rjb'

# Solid tuts:
# http://rjb.rubyforge.org/
# http://www.ibm.com/developerworks/java/tutorials/j-rjb/section3.html


# Model:
# Original string
# parsed format
# source


jars = [
  "/home/thrive/rails_projects/rjb_oscar/jars/commons-lang-2.1.jar", 
  "/home/thrive/rails_projects/rjb_oscar/jars/oscar4-all-4.1-with-dependencies.jar", 
]

Rjb::load(classpath = jars.join(':'), jvmargs=[])

name = "To a solution of 3-bromobenzophenone (1.00 g, 4 mmol) in MeOH (15 mL) was added sodium borohydride (0.3 mL, 8 mmol) portionwise at rt and the suspension was stirred at rt for 1-24 h. The reaction was diluted slowly with water and extracted with CH2Cl2. The organic layer was washed successively with water, brine, dried over Na2SO4, and concentrated to give the title compound as oil (0.8 g, 79%), which was used in the next reaction without further purification. MS (ESI, pos. ion) m/z: 247.1 (M-OH)."



#Rjb::import('java.util.List')
#Rjb::import('java.util.ArrayList')
#Rjb::import('uk.ac.cam.ch.wwmm.oscar.chemnamedict.entities.ChemicalStructure')
#Rjb::import('uk.ac.cam.ch.wwmm.oscar.chemnamedict.entities.FormatType')
#Rjb::import('uk.ac.cam.ch.wwmm.oscar.chemnamedict.entities.ResolvedNamedEntity')
#Rjb::import('uk.ac.cam.ch.wwmm.oscar.Oscar')


oscar = Rjb::import('uk.ac.cam.ch.wwmm.oscar.Oscar').new
format = Rjb::import('uk.ac.cam.ch.wwmm.oscar.chemnamedict.entities.FormatType').INCHI
inchi = Rjb::import('uk.ac.cam.ch.wwmm.oscar.chemnamedict.entities.ChemicalStructure')

entities = oscar.findAndResolveNamedEntities(name).toArray

#puts format.methods
#puts entities.java_methods

for ne in entities
  puts ne.getSurface()

  # puts ne.methods
  inchi = ne.getFirstChemicalStructure(format);
  inchi.methods.include?('toString') == true ? (puts inchi.toString) : ""

end

