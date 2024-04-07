import React from "react";

export default function componentName({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <>
      <h2>Layout admin</h2>
      <div>{children}</div>
    </>
  );
}
