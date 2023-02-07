export const idlFactory = ({ IDL }) => {
  return IDL.Service({
    'addUp' : IDL.Func([IDL.Float64], [], ['oneway']),
    'checkBalance' : IDL.Func([], [IDL.Float64], ['query']),
    'widthraw' : IDL.Func([IDL.Float64], [], ['oneway']),
  });
};
export const init = ({ IDL }) => { return []; };
