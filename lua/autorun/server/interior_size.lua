
hook.Add( 'PlayerSpawnedSENT', 'tardis_interior_size_changer', function( ply, TARDIS_Exterior )
	if TARDIS_Exterior:GetClass() != 'sent_tardis' then return end
	local TARDIS_Interior = TARDIS_Exterior.interior

	-- This is the original function from the TARDIS addon but a bit changed.
	function TARDIS_Interior:Think()
		if self.tardis and IsValid(self.tardis) then
			if self.tardis.occupants then
				for k,v in pairs(self.tardis.occupants) do
					if self:GetPos():Distance( v:GetPos() ) > ( self.interior_size or 700 ) and v.tardis_viewmode and not v.tardis_skycamera then
						self.tardis:PlayerExit(v,true)
					end
				end
			end
		end
	end

	function TARDIS_Interior:SetInteriorSize( size )
		self.interior_size = size > 0 and size or nil
	end

	function TARDIS_Exterior:SetInteriorSize( size )
		self.interior:SetInteriorSize( size )
	end
end )