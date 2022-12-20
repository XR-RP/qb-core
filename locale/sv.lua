local Translations = {
    error = {
        not_online = 'Spelaren är inte online',
        wrong_format = 'Felaktigt format',
        missing_args = 'Alla argument har inte angetts (x, y, z)',
        missing_args2 = 'Alla argument måste fyllas i!',
        no_access = 'Ingen åtkomst till detta kommando',
        company_too_poor = 'Din arbetsgivare är pank',
        item_not_exist = 'Objektet finns inte',
        too_heavy = 'Ditt inventory är fullt',
        location_not_exist = 'Platsen finns inte',
        duplicate_license = 'Duplicerad Rockstar-licens hittades',
        no_valid_license  = 'Ingen giltig Rockstar-licens hittades',
        not_whitelisted = 'Du är inte whitelistad för den här servern',
        server_already_open = 'Servern är redan öppen',
        server_already_closed = 'Servern är redan stängd',
        no_permission = 'Du har inte behörighet för detta..',
        no_waypoint = 'Ingen waypoint är satt.',
        tp_error = 'Fel vid teleportering.',
        connecting_database_error = 'Ett databasfel uppstod vid anslutning till servern. (Är SQL-servern på?)',
        connecting_database_timeout = 'Anslutningen till databasen tog för lång tid. (Är SQL-servern på?)',
    },
    success = {
        server_opened = 'Servern har öppnats',
        server_closed = 'Servern har stängts',
        teleported_waypoint = 'Teleporteras till waypoint.',
    },
    info = {
        received_paycheck = 'Du fick din lönecheck på $%{value}',
        job_info = 'Jobb: %{value} | Rang: %{value2} | Tjänst: %{value3}',
        gang_info = 'Gäng: %{value} | Rang: %{value2}',
        on_duty = 'Du är nu i tjänst!',
        off_duty = 'Du är nu ledig!',
        checking_ban = 'Hej %s. Vi kollar om du är bannad.',
        join_server = 'Välkommen %s till {Server Name}.',
        checking_whitelisted = 'Hej %s. Vi kontrollerar om du är whitelistad.',
        exploit_banned = 'Du har blivit avstängd för fusk. Kolla in vår Discord för mer information: %{discord}',
        exploit_dropped = 'Du har blivit sparkad för exploatering',
    },
    command = {
        tp = {
            help = 'Teleportera till spelare eller koordinater (Endast Admin)',
            params = {
                x = { name = 'id/x', help = 'ID på spelare eller X position'},
                y = { name = 'y', help = 'Y position'},
                z = { name = 'z', help = 'Z position'},
            },
        },
        tpm = { help = 'Teleportera till markör (Endast Admin)' },
        togglepvp = { help = 'Växla PVP på/av på servern (Endast Admin)' },
        addpermission = {
            help = 'Ge en spelare behörigheter (God Only)',
            params = {
                id = { name = 'id', help = 'ID på spelare' },
                permission = { name = 'behörighet', help = 'Behörighetsnivå' },
            },
        },
        removepermission = {
            help = 'Återkalla en spelares behörigheter (God Only)',
            params = {
                id = { name = 'id', help = 'ID på spelare' },
                permission = { name = 'behörighet', help = 'Behörighetsnivå' },
            },
        },
        openserver = { help = 'Öppna servern för alla (Endast Admin)' },
        closeserver = {
            help = 'Stäng servern för alla förutom whitelistade (Endast Admin)',
            params = {
                reason = { name = 'anledning', help = 'Anledning (valfritt)' },
            },
        },
        car = {
            help = 'Spawna fordon (Endast Admin)',
            params = {
                model = { name = 'modell', help = 'Modellnamn på fordonet' },
            },
        },
        dv = { help = 'Ta bort fordon (Endast Admin)' },
        givemoney = {
            help = 'Ge en spelare pengar (Endast Admin)',
            params = {
                id = { name = 'id', help = 'Spelar-ID' },
                moneytype = { name = 'pengatyp', help = 'Typ av pengar (cash, bank, crypto)' },
                amount = { name = 'belopp', help = 'Belopp av pengar' },
            },
        },
        setmoney = {
            help = 'Ställ in en spelares pengar (Endast Admin)',
            params = {
                id = { name = 'id', help = 'Spelar-ID' },
                moneytype = { name = 'pengatyp', help = 'Typ av pengar (cash, bank, crypto)' },
                amount = { name = 'belopp', help = 'Belopp av pengar' },
            },
        },
        job = { help = 'Kontrollera ditt jobb' },
        setjob = {
            help = 'Ställ in en spelares jobb (Endast Admin)',
            params = {
                id = { name = 'id', help = 'Spelar-ID' },
                job = { name = 'jobb', help = 'Jobbnamn' },
                grade = { name = 'rang', help = 'Jobbrang' },
            },
        },
        gang = { help = 'Kontrollera ditt gäng' },
        setgang = {
            help = 'Ställ in en spelares gäng (Endast Admin)',
            params = {
                id = { name = 'id', help = 'Spelar-ID' },
                gang = { name = 'gäng', help = 'Gängnamn' },
                grade = { name = 'rang', help = 'Gängrang' },
            },
        },
        ooc = { help = 'OOC Chattmeddelande' },
        me = {
            help = 'Visa lokalt meddelande',
            params = {
                message = { name = 'meddelande', help = 'Meddelande att skicka' }
            },
        },
    },
}

if GetConvar('qb_locale', 'en') == 'sv' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
