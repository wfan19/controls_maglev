function force = F_iz(I, z, struct_params)
%F_IZ_NEW
%    FORCE = F_IZ_NEW(I,K,L,R,Z)

%    This function was generated by the Symbolic Math Toolbox version 8.6.
%    08-May-2021 21:53:26

l = struct_params.l; % Length of Electromagnet
r = struct_params.r; % Radius of Electromagnet
k = struct_params.k; % Electromagnet force scaling

t2 = l+z;
t3 = r.^2;
t4 = z.^2;
t5 = t2.^2;
t6 = t3+t4;
t7 = t3+t5;
force = (I.*k.*(t4.*1.0./t6.^(3.0./2.0)-t5.*1.0./t7.^(3.0./2.0)-1.0./sqrt(t6)+1.0./sqrt(t7)))./(l.*2.0);
