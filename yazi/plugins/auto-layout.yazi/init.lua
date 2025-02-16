--- change number of columns in small windows
function Tab:layout()
    if self._area.w > 80 then
        self._chunks =
            ui.Layout():direction(ui.Layout.HORIZONTAL):constraints(
            {
                ui.Constraint.Ratio(MANAGER.ratio.parent, MANAGER.ratio.all),
                ui.Constraint.Ratio(MANAGER.ratio.current, MANAGER.ratio.all),
                ui.Constraint.Ratio(MANAGER.ratio.preview, MANAGER.ratio.all)
            }
        ):split(self._area)
    elseif self._area.w > 40 then
        self._chunks =
            ui.Layout():direction(ui.Layout.HORIZONTAL):constraints(
            {
                ui.Constraint.Ratio(0, MANAGER.ratio.all),
                ui.Constraint.Ratio(MANAGER.ratio.current + MANAGER.ratio.parent, MANAGER.ratio.all),
                ui.Constraint.Ratio(MANAGER.ratio.preview + MANAGER.ratio.parent, MANAGER.ratio.all)
            }
        ):split(self._area)
    else
        self._chunks =
            ui.Layout():direction(ui.Layout.HORIZONTAL):constraints(
            {
                ui.Constraint.Ratio(0, MANAGER.ratio.all),
                ui.Constraint.Ratio(MANAGER.ratio.all, MANAGER.ratio.all),
                ui.Constraint.Ratio(0, MANAGER.ratio.all),
            }
        ):split(self._area)
    end
end

return {}
