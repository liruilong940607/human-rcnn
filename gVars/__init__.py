'''
A container for global vars.
    GlobalVars vars;
    vars.set("iter", 30);
    iter = vars.get("iter");
'''

class GlobalVars(object):
    def __init__(self):
        self.vars = {}
    
    def set(self, name, value):
        self.vars[name] = value
        
    def get(self, name):
        if name in self.vars:
            return self.vars[name]
        else:
            return None
    
    def reset(self):
        self.vars = {}
        
gVars = GlobalVars()