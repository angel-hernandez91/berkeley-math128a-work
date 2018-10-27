%Algorithm for the Secant Method

function [p, k] = secant(f, p0, p1, tol) 
        q0 = f(p0);
        q1 = f(p1);
    for k = 1:1000
        p = p1-q1*(p1-p0)/(q1-q0);
        if abs(p-p1) < tol
            break;
        end
        p0 = p1;
        q0 = q1;
        p1 = p;
        q1 = f(p);
    end
end

        