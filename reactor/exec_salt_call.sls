exec_salt_call: 
  cmd.state.highstate:
    - tgt: {{ data['id'] }}
