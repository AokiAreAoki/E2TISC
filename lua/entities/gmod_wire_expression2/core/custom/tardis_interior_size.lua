
E2Lib.RegisterExtension( 'tardis_interior_size_changer', true )

local function CheckPP( ply, ent ) // Prop Protection
	return hook.Call( 'PhysgunPickup', GAMEMODE, ply, ent.tardis or ent )
end

e2function entity entity:tardisGetInterior()
	if !IsValid( this ) then return NULL end
	local interior = this

	if interior:GetClass() == 'sent_tardis' then
		interior = this.interior
	end

	if interior:GetClass() == 'sent_tardis_interior' then
		return interior
	else
		return NULL
	end
end

e2function number entity:tardisGetInteriorSize()
	if !IsValid( this ) then return -1 end
	local interior = this

	if interior:GetClass() == 'sent_tardis' then
		interior = this.interior
	end

	if interior:GetClass() == 'sent_tardis_interior' then
		return interior.interior_size or 700
	else
		return -1
	end
end

e2function number entity:tardisSetInteriorSize(number size)
	if !IsValid( this ) or !CheckPP( self.player, this ) then return 0 end
	local interior = this

	if interior:GetClass() == 'sent_tardis' then
		interior = this.interior
	end

	if interior:GetClass() == 'sent_tardis_interior' then
		interior:SetInteriorSize( size )
		return 1
	else
		return 0
	end
end